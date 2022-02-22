import 'package:dokomi2/constants.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'main.dart';
//import 'package:time_planner/time_planner.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  "Herzlich Wilkommen",
                  style: TextStyle(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
              ),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              physics: ScrollPhysics(),
              children: <Widget>[
                Container(
                  child: Text("Highlight Placeholder Img"),
                ),
                Container(
                  child: Text("Hightlight Placerholder Text"),
                ),
                Container(
                  child: Text("Hightlight Placeholder Text"),
                ),
                Container(
                  child: Text("Hightlight Placerholder img"),
                ),
                Container(
                  child: Text("Hightlihgt Placeholder Img"),
                ),
                Container(
                  child: Text("Highlight Placeholder Text"),
                ),
                Container(
                  child: Text("Test 7"),
                ),
                Container(
                  child: Text("Test 8"),
                ),
                Container(
                  child: Text("Test 9"),
                ),
                Container(
                  child: Text("Test 10"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
