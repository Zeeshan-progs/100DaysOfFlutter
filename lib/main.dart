import 'package:flutter/material.dart';
import 'package:practiceproject/Day12/On_Borad.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewOnBoard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
