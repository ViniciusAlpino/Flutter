import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/Pages/home_page.dart';
import 'package:flutter_app_chamada/Pages/page_inicial.dart';
import 'package:flutter_app_chamada/Pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (_) => SplashPage(),
        "/inicial": (_) => PageInicial(),
        "/home": (_) => HomePage(),
      },
    );
  }
}