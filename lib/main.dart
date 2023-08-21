import 'package:flutter/material.dart';
import 'package:flutter_tuto_3_1/snackbar_page.dart';
import 'package:flutter_tuto_3_1/tab_bar.dart';
import 'package:flutter_tuto_3_1/to_do_screen.dart';
import 'image_card.dart';
import 'video_player_screen.dart';



void main() =>runApp(MaterialApp(
title: 'Passing data',
home: ToDoScreen(
  todos: List.generate(20, (index) => ToDo('Todo $index',
  'A descriptionl of what needs to be done for Todo $index')
  ),
),
)
);
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'passing data';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: 'https://picsum.photos/250?image=9'),
        ),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('tap')));
      },
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Text('Flat Button'),

      ),
    );
  }
}


