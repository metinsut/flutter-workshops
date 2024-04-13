import 'package:flutter/material.dart';

class MyListWidget extends StatelessWidget {
  const MyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListItemWidget(title: 'Öğe 1'),
        ListItemWidget(title: 'Öğe 2'),
        ListItemWidget(title: 'Öğe 3'),
        ListItemWidget(title: 'Öğe 4'),
      ],
    );
  }
}

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18.0),
      ),
    );
  }
}
