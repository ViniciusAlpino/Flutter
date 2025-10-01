import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/Pages/page_mensagens.dart';

class PageInicial extends StatelessWidget {
  const PageInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(centerTitle: true, title: Text('Page Inicial')),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black87,
                child: Text("User"),
              ),
              accountName: Text('Nome'),
              accountEmail: Text('Idade'),
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              title: Text('Perfil'),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
              title: Text('Recarregar'),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
              title: Text('Configuração'),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => PageMensagens()));
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        child: Icon(Icons.messenger),
      ),
    );
  }
}
