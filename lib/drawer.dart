import 'package:dokomi2/FAQ/FAQ.dart';
import 'package:dokomi2/Homepage.dart';
import 'package:dokomi2/constants.dart';
import 'package:dokomi2/workshops/workshops.dart';
import 'package:flutter/material.dart';
import 'buehnen/buehnen.dart';
import 'Homepage.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.room),
            title: Text('Räume'),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: Icon(Icons.event_seat),
                  title: Text('Bühnen'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => buehnen()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Workshops'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => workshops()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: Icon(Icons.gamepad),
                  title: Text('Turniere'),
                  onTap: () {},
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Karte'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => faq()));
            },
          ),
        ],
      ),
    );
  }
}
