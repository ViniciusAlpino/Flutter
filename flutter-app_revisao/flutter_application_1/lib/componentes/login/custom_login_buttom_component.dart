import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';

class CustomLoginButtomComponent extends StatelessWidget {

  final LoginController loginController;

  const CustomLoginButtomComponent({super.key, required this.loginController});

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
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Falha ao realizar o login'),
                        duration: const Duration(seconds: 5),
                      ),
                    );
                  }
                });
              },
              child: Text('login'),
            ),
    );
  }
}
