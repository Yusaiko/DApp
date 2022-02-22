import 'package:dokomi2/FAQ/speechbubbles.dart';
import 'package:dokomi2/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'speechbubbles.dart';
import '../Homepage.dart';

class faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/faqbgi.JPG'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Bubble(
                  message: 'Was ist die Dokomi?',
                  isMe: false,
                ),
                Bubble(
                  message:
                      'Die DoKomi ist ein Treffpunkt für Fans von Anime, Manga, japanischer Musik und Mode. Als Messe bietet die DoKomi ein großes und interaktives Programm für die Besucher.',
                  isMe: true,
                ),
                Bubble(
                  message: 'Wann ist die DoKomi?',
                  isMe: false,
                ),
                Bubble(
                  message:
                      'Die nächste DoKomi findet am 4. und 5. Juni 2022 statt.',
                  isMe: true,
                ),
                Bubble(
                  message: 'Wie komme ich zur DoKomi?',
                  isMe: false,
                ),
                Bubble(
                  message:
                      'Die DoKomi ist ein Treffpunkt für Fans von Anime, Manga, japanischer Musik und Mode. Als Messe bietet die DoKomi ein großes und interaktives Programm für die Besucher.',
                  isMe: true,
                ),
                Bubble(
                  message: 'Muss ich im Cosplay kommen?',
                  isMe: false,
                ),
                Bubble(
                  message:
                      'Nein. Sehr viele Besucher erscheinen zwar im Cosplay, aber dies ist natürlich keine Pflicht!',
                  isMe: true,
                ),
                Bubble(
                  message:
                      'Ich bin unter 16 Jahre alt. Darf ich allein zur DoKomi?',
                  isMe: false,
                ),
                Bubble(
                  message:
                      'Ja! Die DoKomi ist eine Jugendveranstaltung, daher spielt das Alter keine Rolle. Wenn Ihr jedoch länger als 22:00 Uhr bleiben wollt, zum Beispiel für den Cosplay-Ball oder die J-Disko, benötigt Ihr eine "volljährige, erziehungsberechtigte Begleitperson.',
                  isMe: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
