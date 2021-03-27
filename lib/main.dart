import 'package:flutter/material.dart';
import 'package:roads_maintenance/screens/bar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bar(),
    );
  }
}

