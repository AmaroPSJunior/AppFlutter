import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({required this.labelField, Key? key}) : super(key: key);

  final String labelField;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String _userName = '';
  String _password = '';

  void _setUserName() {
    setState(() {
      _userName = 'teste';
    });
  }

  void _setPassword() {
    setState(() {
      _userName = 'teste';
    });
  }

  _teste() {
    setState(() {
      _userName = widget.labelField;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(widget.labelField),
        ),
      ),
    );
  }
}
