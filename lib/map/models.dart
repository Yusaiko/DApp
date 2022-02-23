import 'package:flutter/material.dart';

class Stand {
  String location;
  String name;
  bool status;
  List<double> position;
  int tile;

  Stand.fromMap(Map data) {
    this.location = data['location'] ?? 'No location';
    this.name = data['name'] ?? 'No Name';
    this.status = data['status'] ?? false;
    this.position = data['position'] ?? [0.0];
    this.tile = data['tile'] ?? 0;
  }
}
