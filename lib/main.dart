import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chatty App"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: Text("Add Channel"),
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
