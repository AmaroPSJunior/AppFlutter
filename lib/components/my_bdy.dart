import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/logo.dart';

class MyBody extends StatefulWidget {
  final int variavel;

  const MyBody({required this.variavel, Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //     _counter = widget.variavel;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Logo(),
        const Text('Contador:'),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
