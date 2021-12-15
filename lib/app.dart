import 'package:flutter/material.dart';

import 'pages/login.dart';
import 'pages/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My projct',
      
      theme:
          ThemeData(primarySwatch: Colors.lime, backgroundColor: Colors.white),
      // home: const Home(title: 'Home Page4'),
      home: const Login(),
    );
  }
}
