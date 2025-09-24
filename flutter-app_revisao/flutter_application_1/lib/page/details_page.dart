import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
   PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: Text(args.title),
      ),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            ),
            SizedBox(height: 25,),
            Text(args.body,
            style:  TextStyle(
              fontSize: 16,
            ),
            ),
            SizedBox(height: 25,),
            Text(
              'Noticia: ${args.id}, Auto: ${args.userId}',
            style:  TextStyle(
              fontSize: 16,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
