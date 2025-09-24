import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:flutter_application_1/models/post_model.dart';
import 'package:flutter_application_1/repositories/home_repository_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home')),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              leading: Text(list[idx].id.toString()),
              title: Text(list[idx].title),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(
                context,
              ).pushNamed('/details', arguments: list[idx]),
            ),
            separatorBuilder: (_, __) => Divider(),
          );
        },
      ),
    );
  }
}
