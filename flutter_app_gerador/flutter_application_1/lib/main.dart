import 'package:flutter/material.dart';
import 'package:flutter_application_1/gerador.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerador de senha',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          centerTitle: true,
        )
      ),
      home: PasswordGenerator(),
    );
  }
}