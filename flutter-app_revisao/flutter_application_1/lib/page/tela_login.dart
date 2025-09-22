import 'package:flutter/material.dart';
import 'package:flutter_application_1/componetes/login/custom_login_buttom_component.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/widgets/custom_text_field_widget.dart';

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
            CustomTextFieldWidget(
              label: 'Login',
              onChanged: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              label: 'Senha',
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomLoginButtomComponent(loginController: _controller,),
          ],
        ),
      ),
    );
  }
}
