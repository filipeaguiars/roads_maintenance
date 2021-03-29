import 'package:flutter/material.dart';
import 'package:roads_maintenance/screens/bar.dart';
import 'package:roads_maintenance/screens/home.dart';
import 'package:roads_maintenance/screens/login_page.dart';
import 'package:roads_maintenance/screens/manutencao.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Bar(),
        '/manut': (context) => Manutencao()
      },
    );
  }
}

