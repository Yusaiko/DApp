import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() {
  runApp(DokomiApp());
}

class DokomiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
