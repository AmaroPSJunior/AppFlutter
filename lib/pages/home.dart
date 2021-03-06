import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_app_bar.dart';
import 'package:flutter_application_1/components/my_bdy.dart';
import 'package:flutter_application_1/components/my_drawer.dart';
import 'package:flutter_application_1/components/my_footer.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key? key, required this.title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      onDrawerChanged: (data) {
        debugPrint('onDrawerChanged $data');
      },
      appBar: MyAppBar(appBarTitle: widget.title),
      drawer: const MyDrawer(),
      body: const MyBody(variavel: 10),
      floatingActionButton: const MyFooter(),
    );
  }
}
