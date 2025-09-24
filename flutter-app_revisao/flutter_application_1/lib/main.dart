import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/home_page.dart';
import 'package:flutter_application_1/page/tela_carregamento.dart';
import 'package:flutter_application_1/page/tela_login.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor:  Colors.green,)
      ),
      initialRoute: '/carregamento',
      routes: {
        '/carregamento': (_) => const TelaCarregamento(),
        '/login' : (_) => TelaLogin(),
        '/home' : (_) => const HomePage(),
      }
    );
  }
}