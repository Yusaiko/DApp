import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:provider/provider.dart';
import 'map/floorplan_model.dart';

void main() {
  runApp(DokomiApp());
}

class DokomiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<FloorPlanModel>(
              create: (context) => FloorPlanModel()),
        ],
        child: MaterialApp(
          home: Homepage(),
        ));
  }
}
