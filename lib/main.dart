import 'package:flutter/material.dart';
import 'package:flutter_tuto_3_1/snackbar_page.dart';
import 'package:flutter_tuto_3_1/tab_bar.dart';
import 'video_player_screen.dart';


void main() =>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'validate Test';
    return tabBarDemo();
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


