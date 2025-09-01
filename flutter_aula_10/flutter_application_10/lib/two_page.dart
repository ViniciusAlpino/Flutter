import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key,}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Page 2'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      backgroundColor: Colors.purple,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if(Navigator.of(context).canPop()) {
              Navigator.of(context).pop('Retorno');
            }
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          child: Text('Ir para primeira Page $args')),
      ),
    );
  }
}
