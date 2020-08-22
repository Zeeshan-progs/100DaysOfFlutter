import 'package:flutter/material.dart';
import 'package:practiceproject/Day6/NewCurved.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurvedNavigation(),
    );
  }
}
