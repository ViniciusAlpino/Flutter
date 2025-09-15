import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
    // ignore: use_build_context_synchronously
    ).then((_) => Navigator.of(context).pushReplacementNamed('/login'),
  );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade800,
      child: Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}
