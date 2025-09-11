import 'package:flutter/material.dart';
import 'package:flutter_application_10/views/one_page.dart';
import 'package:flutter_application_10/views/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/twopage': (_) => const TwoPage(),
      },
    );
  }
}