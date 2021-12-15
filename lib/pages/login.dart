import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/logo.dart';
import 'package:flutter_application_1/components/myTextField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  'to adopt',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const Logo(),
              const MyTextField(
                labelField: 'UserName',
              ),
              const MyTextField(labelField: 'Password'),
              // RaisedButton(onPressed: () {}),
              // Button(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class Button {}
