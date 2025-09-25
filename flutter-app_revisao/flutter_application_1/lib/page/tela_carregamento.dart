import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/prefs_services.dart';

class TelaCarregamento extends StatefulWidget {
  const TelaCarregamento({super.key});

  @override
  State<TelaCarregamento> createState() => _TelaCarregamentoState();
}

class _TelaCarregamentoState extends State<TelaCarregamento> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsServices.isAuth(),
      Future.delayed(Duration(seconds: 3)),
    ]).then((value) => value[0]
    ? Navigator.of(context).pushReplacementNamed('/home')
    :Navigator.of(context).pushReplacementNamed('/login'));


    // Future.delayed(Duration(seconds: 3),).then(
    //     (_) => Navigator.of(context).pushReplacementNamed('/login'),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900,
      child: Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}
