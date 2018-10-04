// 3C0f@ll2018

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestrue Detector'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('Info')),
          BottomNavigationBarItem(
              icon: Icon(Icons.event), title: Text('Schedule')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location), title: Text('Map'))
        ],
      ),
    );
  }
}
