import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

/* class SessionsData {
  List<Session> sessions;

  SessionsData({this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      sessions = new List<Session>();
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
} */

class Session {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionShortDesc;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionDay;
  String eventType;
  String stagename;
  String sessionImage;
  String eventImage;

  Session(
      {this.sessionId,
      this.sessionTitle,
      this.sessionDesc,
      this.sessionShortDesc,
      this.sessionStartTime,
      this.sessionTotalTime,
      this.sessionDay,
      this.eventType,
      this.stagename,
      this.sessionImage,
      this.eventImage});

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionShortDesc = json['session_short_desc'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionDay = json['session_day'];
    eventType = json['event_type'];
    stagename = json['stagename'];
    sessionImage = json['session_image'];
    eventImage = json['event_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_short_desc'] = this.sessionShortDesc;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_day'] = this.sessionDay;
    data['event_type'] = this.eventType;
    data['stagename'] = this.stagename;
    data['session_image'] = this.sessionImage;
    data['event_image'] = this.eventImage;
  }
}

/*
 List<Session> sessions = [
  Session(
      sessionId: "1",
      sessionStartTime: "12:00",
      sessionTotalTime: "30 Mins",
      sessionTitle: "Begrüßungsveranstaltung",
      sessionDesc: "bla",
      sessionShortDesc: "Kurze beschreibung",
      sessionDay: "Sa",
      eventImage: "images/Trafalgar.jpg",
      eventType: "stage",
      stagename: "blackstage"),
  Session(
    sessionId: "2",
    sessionStartTime: "9:30",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Dancing",
    sessionDesc: "blub",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "stage",
    stagename: "blackstage",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "10:30",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Cosplayshowcase",
    sessionDesc: "blub",
    sessionDay: "So",
    eventImage: "images/Trafalgar.jpg",
    eventType: "stage",
    stagename: "blackstage",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "11:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Pokemon Go ohne sich zu bewegen",
    sessionDesc: "bla",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "stage",
    stagename: "blackstage",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "1:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Cosplay Nähen",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "workshop",
    stagename: "raum1",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "2:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Japanisch verstehen",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "workshop",
    stagename: "raum2",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "3:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Japanisch schreiben",
    sessionDesc: "desc",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "workshop",
    stagename: "raum3",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "4:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Anime dubbing",
    sessionDesc: "desc",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
    stagename: "raum4",
    eventType: "workshop",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "5:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Yu-Gi-Oh Karten selber malen",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "workshop",
    stagename: "raum5",
  ),
  Session(
    sessionId: "10",
    sessionStartTime: "5:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "J-Fashion Modeschau",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "stage",
    stagename: "whitestage",
  ),
  Session(
    sessionId: "10",
    sessionStartTime: "5:00",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Sayuri",
    sessionDesc: "desc",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
    eventType: "stage",
    stagename: "whitestage",
  ),
]; */
