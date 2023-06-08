import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("AlertDialogTest"),
        content: Text("Test"),
        actions: [
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Continue"),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}
