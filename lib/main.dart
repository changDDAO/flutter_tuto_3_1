import 'package:flutter/material.dart';
import 'package:flutter_tuto_3_1/retrieve_text.dart';
import 'my_custom_form.dart';
import 'login_form.dart';

void main() =>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'InkWell Demo';
    return const MaterialApp(
      title: title,
      home: MyCustomForm2(),
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


