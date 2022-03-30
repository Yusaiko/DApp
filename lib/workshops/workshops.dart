import 'package:dokomi2/buehnen/session_api.dart';
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
  static List<Session> sessions;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    TabBarView(
      physics: BouncingScrollPhysics(),
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

  /*Widget buildUsers(List<Session> sessions) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          final session = sessions[index];
          return;
        },
      );

  sortFields(List<Session> sessions) {
    SaRa1 = sessions
        .where((s) =>
            s.sessionDay == "Sa" &&
            s.eventType == "workshop" &&
            s.stagename == "raum1")
        .toList();
    SoRa2 = sessions.where((s) =>
        s.sessionDay == "So" &&
        s.eventType == "workshop" &&
        s.stagename == "raum1");
    SaRa2 = sessions.where((s) =>
        s.sessionDay == "Sa" &&
        s.eventType == "workshop" &&
        s.stagename == "raum2");
    SoRa2 = sessions.where((s) =>
        s.sessionDay == "So" &&
        s.eventType == "workshop" &&
        s.stagename == "raum2");
    SaRa3 = sessions.where((s) =>
        s.sessionDay == "Sa" &&
        s.eventType == "workshop" &&
        s.stagename == "raum3");
    SoRa3 = sessions.where((s) =>
        s.sessionDay == "So" &&
        s.eventType == "workshop" &&
        s.stagename == "raum3");
    SaRa4 = sessions.where((s) =>
        s.sessionDay == "Sa" &&
        s.eventType == "workshop" &&
        s.stagename == "raum4");
    SoRa4 = sessions.where((s) =>
        s.sessionDay == "So" &&
        s.eventType == "workshop" &&
        s.stagename == "raum4");
    SaRa5 = sessions.where((s) =>
        s.sessionDay == "Sa" &&
        s.eventType == "workshop" &&
        s.stagename == "raum5");
    SoRa5 = sessions.where((s) =>
        s.sessionDay == "So" &&
        s.eventType == "workshop" &&
        s.stagename == "raum5");
  }*/
}
