import 'package:flutter/material.dart';

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
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed('/twopage', arguments: '123')
                .then((value) => print(value));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          child: Text('Ir para segunda Page'),
        ),
      ),
    );
  }
}
