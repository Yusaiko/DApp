import 'package:dokomi2/buehnen/longdescr.dart';
import 'package:dokomi2/constants.dart';
import 'package:dokomi2/buehnen/session.dart';
import 'package:flutter/material.dart';

class Blackstage_List extends StatelessWidget {
  final List<Session> allSessions;

  const Blackstage_List({Key key, this.allSessions}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: allSessions.length,
      itemBuilder: (c, i) {
        return Card(
          elevation: 0.0,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => dynamicEventPage(
                          sID: int.parse(allSessions[i].sessionId))));
            },
            isThreeLine: true,
            trailing: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "${allSessions[i].sessionTotalTime}\n",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: allSessions[i].sessionStartTime,
                      )
                    ])),
            leading: Text(allSessions[i].sessionStartTime),
            title: Text(allSessions[i].sessionTitle),
            subtitle: Text(
              allSessions[i].sessionDay,
            ),
          ),
        );
      },
    );
  }
}
