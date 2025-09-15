import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/login/custom_login_buttom_component.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:flutter_application_1/widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({super.key});

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
              onChanged: _controller.setLogin,
              label: 'login',
            ),
            CustomTextFieldWidget(onChanged: _controller.setLogin, label: 'senha', obscureText: true,),
            SizedBox(height: 20),
            CustomLoginButtomComponent(loginController: _controller),
          ],
        ),
      ),
    );
  }
}
