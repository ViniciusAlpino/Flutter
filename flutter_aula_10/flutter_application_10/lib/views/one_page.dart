
import 'package:flutter_application_10/controllers/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
 
 final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Page 1'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtonWidget(
                disabled: false,
                onPressed: () => _controller.callAPI(),
                title: 'Custom BTN',
                titleSize: 20,
              ),
              SizedBox(height: 10),
              AnimatedBuilder(
                animation: Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (_, idx) =>
                            ListTile(title: Text(_controller.posts.value[idx].title)),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}