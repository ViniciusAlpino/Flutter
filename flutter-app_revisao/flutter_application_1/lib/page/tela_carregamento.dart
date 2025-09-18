import 'package:flutter/material.dart';

class TelaCarregamento extends StatefulWidget {
  const TelaCarregamento({super.key});

  @override
  State<TelaCarregamento> createState() => _TelaCarregamentoState();
}

class _TelaCarregamentoState extends State<TelaCarregamento> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),).then(
        (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900,
      child: Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}
