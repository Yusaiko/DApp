import 'package:dokomi2/constants.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';
import '../buehnen/session.dart';
import '../buehnen/Blackstage_List.dart';
//import 'package:time_planner/time_planner.dart';

class workshops extends StatefulWidget {
  @override
  _WorkshopState createState() => _WorkshopState();
}

class _WorkshopState extends State<workshops> {
  int _selectedIndex = 0;

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
                  s.eventType == "workshop" &&
                  s.stagename == "raum1")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "workshop" &&
                  s.stagename == "raum1")
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
                  s.eventType == "workshop" &&
                  s.stagename == "raum2")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "workshop" &&
                  s.stagename == "raum2")
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
                  s.eventType == "workshop" &&
                  s.stagename == "raum3")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "workshop" &&
                  s.stagename == "raum3")
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
                  s.eventType == "workshop" &&
                  s.stagename == "raum4")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "workshop" &&
                  s.stagename == "raum4")
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
                  s.eventType == "workshop" &&
                  s.stagename == "raum5")
              .toList(),
        ),
        Blackstage_List(
          allSessions: sessions
              .where((s) =>
                  s.sessionDay == "So" &&
                  s.eventType == "workshop" &&
                  s.stagename == "raum5")
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
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Workshop 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Workshop 2',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_rounded), label: 'Workshop 3'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined), label: 'Workshop 4'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ad_units_rounded), label: 'Workshop 5'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
