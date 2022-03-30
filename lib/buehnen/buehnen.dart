import 'package:dokomi2/constants.dart';
import 'package:dokomi2/buehnen/session_api.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';
import 'session.dart';
import 'Blackstage_List.dart';
//import 'package:time_planner/time_planner.dart';

class buehnen extends StatefulWidget {
  @override
  _BuehnenState createState() => _BuehnenState();
}

class _BuehnenState extends State<buehnen> {
  int _selectedIndex = 0;
  static List<Session> sessions;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    TabBarView(
      children: <Widget>[
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "Sa" &&
                  s.eventType == "stage" &&
                  s.stagename == "blackstage")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "stage" &&
                  s.stagename == "blackstage")
              .toList(),
        ),
      ],
    ),
    TabBarView(
      children: <Widget>[
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "Sa" &&
                  s.eventType == "stage" &&
                  s.stagename == "whitestage")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "stage" &&
                  s.stagename == "whitestage")
              .toList(),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var index;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
            isScrollable: false,
            labelStyle: TextStyle(fontSize: 12),
            tabs: [
              Tab(
                child: Text("Samstag"),
              ),
              Tab(
                child: Text("Sonntag"),
              )
            ],
          ),
        ),
        drawer: drawer(),
        body: FutureBuilder<List<Session>>(
          future: UsersApi.getExhibition(),
          builder: (context, snapshot) {
            final event = snapshot.data;
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occured!'));
                } else {
                  //sortFields(event);
                  sessions = event;
                  return _widgetOptions.elementAt(_selectedIndex);
                  //buildUsers(event);
                  // sortFields(event);
                }
            }
          },
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Black Stage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'White Stage'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
