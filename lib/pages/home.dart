import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/myAppBar.dart';
import 'package:flutter_application_1/components/myBody.dart';
import 'package:flutter_application_1/components/myDrawer.dart';
import 'package:flutter_application_1/components/myFooter.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key? key, required this.title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarTitle: widget.title),
      drawer: MyDrawer(),
      body: MyBody(variavel: 10),
      floatingActionButton:
          const MyFooter(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
