import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomForm2 extends StatefulWidget {
  const MyCustomForm2({super.key});

  @override
  State<MyCustomForm2> createState() => _MyCustomForm2State();
}

class _MyCustomForm2State extends State<MyCustomForm2> {
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
// Create a Form widget.
class MyCustomForm3 extends StatefulWidget {
  const MyCustomForm3({super.key});

  @override
  MyCustomForm3State createState() {
    return MyCustomForm3State();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomForm3State extends State<MyCustomForm3> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}