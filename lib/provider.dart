import 'package:flutter/material.dart';
import 'package:tedata/homepage.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: "Smart Home",
      home: Home(),
    );
  }
}
