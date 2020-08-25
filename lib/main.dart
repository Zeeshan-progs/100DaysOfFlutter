import 'package:flutter/material.dart';
import 'package:practiceproject/Day8/ImageSlider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ImageSlider(),
      debugShowCheckedModeBanner: false,
    );
  }
}
