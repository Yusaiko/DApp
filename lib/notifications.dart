import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService extends ChangeNotifier {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future initzialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("@mipmap/creamy");

    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings,
            iOS: iosInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    final bool result = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  //Instant Notification Test
//TODO: Grouping Notifications, Cancel Notifications
  Future instantNotification() async {
    initzialize();
    var android = AndroidNotificationDetails("id", "channel",
        channelDescription: "description");

    var ios = IOSNotificationDetails();

    var platform = new NotificationDetails(android: android, iOS: ios);

    await _flutterLocalNotificationsPlugin.show(
        0, "Demo instant Notification", "Tap to do Something", platform,
        payload: "Welcome to demo App");
  }

  //Scheduled Notification Test

  Future scheduledNotification(
      int nID, var nTitle, var nBody, var nStartTime, var nStartDate) async {
    initzialize();
    var timeZoneName;
    var startNotificationTime;
    tz.initializeTimeZones();
    timeZoneName = tz.getLocation('Europe/Berlin');
    tz.setLocalLocation(timeZoneName);
    if (nStartDate == "Sa" || nStartDate == "Samstag") {
      nStartDate = "2022-06-04";
    } else {
      nStartDate = "2022-06-05";
    }
    nStartDate = nStartDate + ":00";

    startNotificationTime = nStartDate + ' ' + nStartTime;

    await FlutterLocalNotificationsPlugin().zonedSchedule(
        nID,
        nTitle, //Event Name
        nBody, // Kann fast so bleiben

        //tz.TZDateTime.parse(tz.local, "2022-02-22 08:32:00").toUtc(),
        tz.TZDateTime.now(timeZoneName).add(const Duration(seconds: 5)),
        const NotificationDetails(
            android: AndroidNotificationDetails(
                'Das könnte ihre ID sein', 'Dokomi',
                channelDescription: 'Das Event beginnt jeden augenblick'),
            iOS: IOSNotificationDetails(threadIdentifier: 'thread_id')),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
}
