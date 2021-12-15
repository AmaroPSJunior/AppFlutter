import 'package:flutter/material.dart';

class MyFooter extends StatefulWidget {
  const MyFooter({Key? key}) : super(key: key);

  @override
  _MyFooterState createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
