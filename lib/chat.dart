import 'package:flutter/material.dart';

void main() {
  runApp(const MyChat());
}

class MyChat extends StatelessWidget {
  const MyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen),
      ),
      home: chatPage(),
    );
  }
}

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pull title from main page"),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type Your Message',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
