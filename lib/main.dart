import 'package:flutter/material.dart';
import 'package:practiceproject/Day1/NewContainer.dart';


void main() {
  runApp(MyApp(),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: NewContainer(),
    );
  }
}