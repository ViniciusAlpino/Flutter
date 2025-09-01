import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> tarefa = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Tarefa'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(controller: _textEditingController),
            Container(
              height: 400,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: tarefa.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tarefa[index]),
                    onLongPress: () {
                      setState(() {
                        tarefa.removeAt(index);
                      });
                    },
                    );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              if (_textEditingController.text.length > 0) {
                setState(() {
                  tarefa.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
            },
            child: Icon(Icons.add),
          ),

          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
                setState(() {
                  tarefa = [];
                });
                _textEditingController.clear();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
