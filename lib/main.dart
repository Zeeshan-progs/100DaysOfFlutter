import 'package:flutter/material.dart';
import 'package:practiceproject/Day11/NewCard.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
