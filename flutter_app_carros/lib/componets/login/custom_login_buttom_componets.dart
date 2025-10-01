import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/controllers/login_controller.dart';

class CustomLoginButtomComponets extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtomComponets({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text('Falha ao fazer o Login'),
                      duration: Duration(seconds: 3),
                      ),
                    );
                  }
                });
              },
              child: Text('Login'),
            ),
    );
  }
}
