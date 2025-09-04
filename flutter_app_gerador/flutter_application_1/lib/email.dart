import 'dart:math';
import 'package:flutter/material.dart';

class EmailGenerator extends StatefulWidget {
  const EmailGenerator({super.key});

  @override
  State<EmailGenerator> createState() => _EmailGeneratorState();
}

class _EmailGeneratorState extends State<EmailGenerator> {
  String email = "";

  final List<String> names = [
    "joao", "maria", "ana", "carlos", "lucas", "marcos", "vinicius", "paula"
  ];
  final List<String> domains = [
    "gmail.com", "outlook.com", "yahoo.com", "hotmail.com"
  ];

  String generateEmail() {
    final random = Random();

    String name = names[random.nextInt(names.length)];
    int number = random.nextInt(9999); // número até 9999
    String domain = domains[random.nextInt(domains.length)];

    return "$name$number@$domain";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gerador de E-mails"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(email, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  email = generateEmail();
                });
              },
              child: const Text("Gerar E-mail"),
            ),
          ],
        ),
      ),
    );
  }
}
