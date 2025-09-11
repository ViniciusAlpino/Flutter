import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} 
// Todo projeto tem que ter esse comando de runApp, para rodar o app

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //vai ser StatelessWidget ou StatefulBuilder

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade900),
      ),
      home: const MyHomePage(title: 'Hola Mundo!'),
    );
  }
}
// sempre vai ter o build, quando algo for renderizado, buildado, vai ser pelo metodo build.

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// classe privado internar dentro do Stateful
// tudo que tiver _ no começo vai ser privado

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = _counter - 1;
    });
  }
  // void é = NADA

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contador'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton:Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.minimize),
        backgroundColor: Colors.red,
      ),
      ],)
    );
  }
}
