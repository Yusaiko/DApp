import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'session.dart';

class UsersApi {
  static Future<List<Session>> getExhibition() async {
    try {
      final response = await http
          .get(Uri.parse('https://www.dokomi.de/api/app/summary.json'));
      if (200 == response.statusCode) {
        final body = json.decode(response.body);
        return body.map<Session>(Session.fromJson).toList();
      } else {
        //return; TODO Lokale JSON
      }
    } catch (e) {
      //return TODO Lokale JSON
    }
  }

  static initStateSessionList() async {
    List<Session> sessions = await getExhibition();
    return sessions;
  }
}
