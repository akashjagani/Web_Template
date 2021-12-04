import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_demo_app/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Demo App',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
