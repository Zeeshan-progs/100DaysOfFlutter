import 'package:flutter/material.dart';
import 'package:practiceproject/Day9/image_show.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageShow(),
      debugShowCheckedModeBanner: false,
    );
  }
}
