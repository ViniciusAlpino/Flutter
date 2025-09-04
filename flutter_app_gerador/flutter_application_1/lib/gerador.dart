import 'dart:math';
import 'package:flutter/material.dart';

class PasswordGenerator extends StatefulWidget {
  const PasswordGenerator({super.key});

  @override
  State<PasswordGenerator> createState() => _PasswordGeneratorState();
}

class _PasswordGeneratorState extends State<PasswordGenerator> {
  String password = "";
  double length = 12;

  bool includeUpper = true;
  bool includeLower = true;
  bool includeNumbers = true;
  bool includeSymbols = false;

  String generatePassword(int length) {
    String chars = "";
    if (includeLower) chars += "abcdefghijklmnopqrstuvwxyz";
    if (includeUpper) chars += "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    if (includeNumbers) chars += "0123456789";
    if (includeSymbols) chars += "!@#\$%^&*";

    if (chars.isEmpty) return "Selecione pelo menos 1 opção";

    final random = Random.secure();
    return List.generate(length, (i) => chars[random.nextInt(chars.length)])
        .join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gerador de Senha")),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('user'),
              ),
              accountName: Text('user'),
               accountEmail:Text('email'),
               decoration: BoxDecoration(color: Colors.white),
               ),
                 ListTile(
              title: Text('Email'),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(password, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),

            // Slider para escolher quantidade de caracteres
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Tamanho:"),
                Text(length.toInt().toString()),
              ],
            ),
            Slider(
              min: 4,
              max: 32,
              divisions: 28,
              value: length,
              label: length.toInt().toString(),
              onChanged: (value) {
                setState(() {
                  length = value;
                });
              },
            ),

            // Opções de composição da senha
            CheckboxListTile(
              value: includeLower,
              title: const Text("Letras minúsculas"),
              onChanged: (val) => setState(() => includeLower = val!),
            ),
            CheckboxListTile(
              value: includeUpper,
              title: const Text("Letras maiúsculas"),
              onChanged: (val) => setState(() => includeUpper = val!),
            ),
            CheckboxListTile(
              value: includeNumbers,
              title: const Text("Números"),
              onChanged: (val) => setState(() => includeNumbers = val!),
            ),
            CheckboxListTile(
              value: includeSymbols,
              title: const Text("Símbolos"),
              onChanged: (val) => setState(() => includeSymbols = val!),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  password = generatePassword(length.toInt());
                });
              },
              child: const Text("Gerar Senha"),
            ),
          ],
        ),
      ),
    );
  }
}
