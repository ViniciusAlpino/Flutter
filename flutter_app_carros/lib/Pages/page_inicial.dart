import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/componets/login/custom_login_buttom_componets.dart';
import 'package:flutter_app_chamada/controllers/login_controller.dart';
import 'package:flutter_app_chamada/widgets/custom_text_field_widget.dart';

class PageInicial extends StatefulWidget {

  const PageInicial({super.key});

  @override
  State<PageInicial> createState() => _PageInicialState();
}

class _PageInicialState extends State<PageInicial> {
  LoginController _controller =LoginController();


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
              onPressed: _controller.setLogin,
            ),
             CustomTextFieldWidget(
              label: 'Senha',
              onPressed: _controller.setPass,
              obscureText: true,
             ),
            SizedBox(height: 20,),
            CustomLoginButtomComponets(loginController: _controller),
          ],
        ),
      ),
    );
  }
}