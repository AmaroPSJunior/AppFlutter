import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String appBarTitle;

  MyAppBar({required this.appBarTitle, Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.appBarTitle),
      actions: [
        IconButton(
          icon: const Icon(Icons.search_outlined),
          tooltip: 'pesquisar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('carretando resultados!')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          tooltip: 'adicionar aos favoritos',
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Favoritado!')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.logout),
          tooltip: 'Sair',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logout realizado!')));
          },
        ),
      ],
    );
  }
}
