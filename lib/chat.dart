// ignore_for_file: camel_case_types

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

class Chat {
  final String content;
  final String sender;
  final DateTime timestamp;

  Chat({
    required this.content,
    required this.sender,
    required this.timestamp,
  });
}

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  List<Chat> chats = [];
  String userInput = '';
  void sendChat() {
    if (userInput.isNotEmpty) {
      Chat newChat = Chat(
        content: userInput,
        sender: 'zeroax1s',
        timestamp: DateTime.now(),
      );
      setState(() {
        chats.add(newChat);
        userInput = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pull title from main page"),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    Chat message = chats[index];
                    return ListTile(
                      title: Text(message.content),
                      subtitle: Text(message.sender),
                      trailing: Text(message.timestamp.toString()),
                    );
                  },
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    userInput = value;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.lightGreen),
                  ),
                  labelText: 'Type Your Message',
                  suffixIcon: IconButton(
                    color: Colors.lightGreen,
                    onPressed: sendChat,
                    icon: Icon(Icons.send),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
