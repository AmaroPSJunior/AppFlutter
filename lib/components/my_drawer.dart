import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.network(
            'https://images.ctfassets.net/23aumh6u8s0i/2RrLE9Sz4VcKrh4pa3I0kn/8e1bbadef51dd4e26aa8174c2afbfd3a/flutter.png',
            fit: BoxFit.cover,
          ),
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lime,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
