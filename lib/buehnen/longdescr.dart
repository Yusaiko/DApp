import 'package:flutter/material.dart';
import 'package:dokomi2/buehnen/session.dart';

class dynamicEventPage extends StatelessWidget {
  final List<Session> allSessions;
  final sID;
  const dynamicEventPage({Key key, this.allSessions, @required this.sID})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    int realID;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(sessions[this.sID - 1].sessionTitle),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(0),
        mainAxisSpacing: 0,
        crossAxisCount: 1,
        children: <Widget>[
          FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.5,
            alignment: FractionalOffset.topCenter,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(sessions[this.sID - 1].eventImage),
                ),
              ),
            ),
          ),
          Container(
            child: Text(" Dies ist ein Test Text"),
          )
        ],
      ),
    );
  }
}
