import 'package:flutter/material.dart';

class PageMensagens extends StatelessWidget {
  const PageMensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Mensagens'),
        titleTextStyle: TextStyle(fontSize: 25),
      ),
    );
  }
}
