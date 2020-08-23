import 'package:flutter/material.dart';
import 'package:practiceproject/Day7/Alert_Box.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewAlert(),
      debugShowCheckedModeBanner: false,
    );
  }
}
