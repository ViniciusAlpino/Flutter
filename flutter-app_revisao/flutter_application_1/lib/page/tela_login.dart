import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';

class TelaLogin extends StatelessWidget {
  LoginController _controller = LoginController();

  TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
            TextField(
              decoration: InputDecoration(label: Text('Login')),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Senha')),
              obscureText: true,
              onChanged: _controller.setPass,
            ),
            SizedBox(height: 20),
             ValueListenableBuilder<bool>(
               valueListenable: _controller.inLoader,
               builder: (_, inLoader, __) => inLoader ? CircularProgressIndicator() : ElevatedButton(
                  onPressed: () {
                    _controller.auth().then((result) {
                      if (result) {
                       Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(
                          content: const Text('Falha ao fazer o Login'),
                          duration: Duration(seconds: 3),
                          ),
                        );
                      }
                    });
                  },
                  child: Text('Login'),
              ),
             ),
          ],
        ),
      ),
    );
  }
}
