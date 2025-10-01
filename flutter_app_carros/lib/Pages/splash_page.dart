import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/services/prefs_services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsServices.isAuth(),
      Future.delayed(Duration(seconds: 2)),
    ]).then((value) => value[0]
    ? Navigator.of(context).pushReplacementNamed('/home')
    : Navigator.of(context).pushReplacementNamed('/inicial'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Center(
        child: CircularProgressIndicator(color: Colors.black,),
      ),
    );
  }
}