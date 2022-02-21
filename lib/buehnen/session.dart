class SessionsData {
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
}

class Session {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String sessionDay;
  String eventImage;

  Session({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.sessionDay,
    this.eventImage,
  });

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    sessionDay = json['session_day'];
    eventImage = json['event_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['session_day'] = this.sessionDay;
    data['event_image'] = this.eventImage;
  }
}

List<Session> sessions = [
  Session(
    sessionId: "1",
    sessionStartTime: "12:00 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "DevByte: From Zero to ML on Google Cloud Platform",
    sessionDesc: "bla",
    sessionDay: "Sa",
    eventImage: "images/Trafalgar.jpg",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "9:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "How I Became a Mobile Developer with Firebase and Flutter",
    sessionDesc: "blub",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "10:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Angular Elements",
    sessionDesc: "blub",
    sessionDay: "So",
    eventImage: "images/Trafalgar.jpg",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Machine Learning and AutoML on GCP",
    sessionDesc: "bla",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "1:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Top 5 from Firebase Summit '18",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "2:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Multiplayer Games with WebXR",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "3:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Mobile Database Persistence",
    sessionDesc: "desc",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "4:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Progressive Experience Web Development",
    sessionDesc: "desc",
    sessionDay: "So",
    eventImage: "images/demon_slayer.jpeg",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "5:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Kotlin Coroutines",
    sessionDesc: "desc",
    sessionDay: "Sa",
    eventImage: "images/demon_slayer.jpeg",
  ),
];
