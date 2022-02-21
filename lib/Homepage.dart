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
                  child: Text("Test 1"),
                ),
                Container(
                  child: Text("Test 2"),
                ),
                Container(
                  child: Text("Test 3"),
                ),
                Container(
                  child: Text("Test 4"),
                ),
                Container(
                  child: Text("Test 5"),
                ),
                Container(
                  child: Text("Test 6"),
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
