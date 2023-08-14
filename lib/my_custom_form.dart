import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  late FocusNode myFocusNode;
  @override
  void initState(){
    super.initState();
    myFocusNode = FocusNode();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Focus'),

    ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child:Column(
          children: [
            const TextField(
              autofocus: true,
            ),
             TextField(
              focusNode: myFocusNode,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        myFocusNode.requestFocus();
        },
        tooltip: 'Focus Second Text Field',
        child: const Icon(Icons.edit),

      ),
    );
  }
}
