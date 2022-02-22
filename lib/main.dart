import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() {
  runApp(DokomiApp());
}

class DokomiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(int.parse("1200"));
    return MaterialApp(
      home: Homepage(),
    );
  }
}
