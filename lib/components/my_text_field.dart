import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({required this.labelField, this.type = '', Key? key})
      : super(key: key);

  final String labelField;
  final String type;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String _imputVelue = '';

  void _setUserName(data) => setState(() => _imputVelue = data);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(widget.labelField + ' - ' + _imputVelue),
      ),
      keyboardType: TextInputType.text,
      onChanged: (value) {
        _setUserName(value);
      },
    );
  }
}
