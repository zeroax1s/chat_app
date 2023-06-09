import 'package:flutter/material.dart';

bool isTextFieldEmpty = true;

showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Name Your Chat"),
        content: TextField(
          controller: TextEditingController(),
          onChanged: (value) {},
        ),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Save"),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}
