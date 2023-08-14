import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
          'Show SnackBar'
        ),
        onPressed: (){
          final snackBar = SnackBar(
            content: const Text('I\'m snackBar'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: (){

                },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
      ),
    );
  }
}
