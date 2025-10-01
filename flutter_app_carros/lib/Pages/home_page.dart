import 'package:flutter/material.dart';
import 'package:flutter_app_chamada/controllers/home_controller.dart';
import 'package:flutter_app_chamada/reposity/home_reposity_imp.dart';
import 'package:flutter_app_chamada/services/prefs_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = HomeController(HomeReposityImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              PrefsServices.logout();
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil('/inicial', (_) => true);
            },
            icon: Icon(Icons.logout, color: Colors.white),
          ),
        ],
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Marcas', style: TextStyle(color: Colors.white)),
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text(list[idx].nome, style: TextStyle(fontSize: 20),),
            ),
            separatorBuilder: (_,__) => Divider(),
          );
        },
      ),
    );
  }
}
