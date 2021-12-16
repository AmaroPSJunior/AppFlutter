import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  MyAlert({
    Key? key,
    required this.title,
    required this.message,
    this.textButtonClose,
  }) : super(key: key);

  final String title;
  final String message;
  String? textButtonClose;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(message),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text(textButtonClose ?? 'OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
