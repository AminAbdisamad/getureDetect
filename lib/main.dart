import 'package:flutter/material.dart';
import './ui/home.dart';

void main() => runApp(new App());

// Main starter of the application
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Gesture Detect App', home: Home());
  }
}
