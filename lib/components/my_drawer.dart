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
          Container(
            child: DrawerHeader(
              child: Image.network(
                'https://images.ctfassets.net/23aumh6u8s0i/2RrLE9Sz4VcKrh4pa3I0kn/8e1bbadef51dd4e26aa8174c2afbfd3a/flutter.png',
                fit: BoxFit.cover,
              ),
              // child: CircleAvatar(),
            ),
            color: Colors.lime,
          ),
          Container(
            color: Colors.lime,
            child: Column(
              children: List.generate(4, (int index) {
                return ListTile(
                  leading: const Icon(Icons.info),
                  title: Text('Item $index'),
                  onTap: () => Navigator.pop(context),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
