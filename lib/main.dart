import 'package:flutter/material.dart';
import 'widgets/alertDialogue.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chatty App"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showAlertDialog(context);
        },
        label: Text("Add Channel"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
