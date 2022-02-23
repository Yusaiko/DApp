import 'package:dokomi2/AppBarWidget.dart';
import 'package:dokomi2/map/raw_gesture_detector_widget.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';
import '../AppBarWidget.dart';
import '../main.dart';
import 'gridview_widget.dart';

class AllHalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          child: AppBarWidget(),
        ),
      ),
      drawer: drawer(),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                RawGestureDetectorWidget(
                  child: GridViewWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
