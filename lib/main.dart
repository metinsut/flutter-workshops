import 'package:flutter/material.dart';

import 'gesture.dart';
import 'list.dart';
import 'topbox2.dart';
import 'topbox3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Basic",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.purple.shade300,
          ),
          body: const TabBarView(
            children: [
              Home(),
              TapboxA(),
              Text('Hello World',
                  style: TextStyle(fontSize: 16, color: Colors.black87)),
            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Hello World',
            style: TextStyle(fontSize: 46, color: Colors.black87)),
        const SizedBox(
            height: 300,
            child: Image(
                image: AssetImage('assets/image1.webp'), fit: BoxFit.cover)),
        const ListWidget(),
        const TapboxA(),
        TapboxB(
          active: _active,
          onChanged: _handleTapboxChanged,
        ),
        TapboxC(
          active: _active,
          onChanged: _handleTapboxChanged,
        )
      ],
    ));
  }
}
