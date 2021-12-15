import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({required this.labelField, Key? key}) : super(key: key);

  final String labelField;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String _imputVelue = '';

  void _setUserName(data) => setState(() => _imputVelue = data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: Text(widget.labelField + ' - ' + _imputVelue),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              _setUserName(value);
            },
          ),
        ),
      ],
    );
  }
}
