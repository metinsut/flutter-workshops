import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("a1"),
        Text("a2"),
        Text("a4"),
        Text("a3"),
      ],
    );
  }
}
