import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(10000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Page 1'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtonWidget(
              disabled: false,
              onPressed: () => random(),
              title: 'Custom BTN',
              titleSize: 20,
            ),
            SizedBox(height: 10,),
            ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, value, __) => Text('Valor eh: $value',
               style: TextStyle(fontSize: 18),
               ),
            ),
          ],
        ),
      ),
    );
  }
}
