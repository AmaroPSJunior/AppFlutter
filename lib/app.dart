import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/sign_in.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My projct',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        backgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home(title: 'Home'),
        '/signin': (context) => const SignIn(),
      },
    );
  }
}
