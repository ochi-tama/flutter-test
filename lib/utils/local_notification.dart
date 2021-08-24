import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

import '../ui/home.dart';
import 'notification_plugin.dart';

const String _notificationChannelId = "notificationChannel";

/// No Doc
class LocalNotification implements NotificationPlugin {
  /// No Doc
  LocalNotification() : _plugin = FlutterLocalNotificationsPlugin();
  final FlutterLocalNotificationsPlugin _plugin;
  final _defaultNotificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(_notificationChannelId,
          "wearing timer notification", "notify expiration date",
          importance: Importance.max, priority: Priority.high));

  /// initialize with select notification handler
  Future<void> initializeSettings(BuildContext context) async {
    // initialise the plugin. app_icon needs to be a
    // added as a drawable resource to the Android head project
    const initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final initializationSettingsIOS = IOSInitializationSettings();
    final initializationSettingsMacOS = MacOSInitializationSettings();
    final initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
        macOS: initializationSettingsMacOS);
    await _plugin.initialize(initializationSettings,
        onSelectNotification: selectNotification(context));
  }

  /// No Doc
  Future<void> showNotification() async {
    await _plugin.show(
        0, 'plain title', 'plain body', _defaultNotificationDetails,
        payload: 'item x');
  }

  /// No Doc
  Future<void> cancelNotification() async {
    await _plugin.cancel(1);
  }

  /// No Doc
  Future<void> zonedScheduleNotification(DateTime startDate, int days) async {
    final scheduledDate =
        tz.TZDateTime.from(startDate, tz.local).add(Duration(days: days));

    //final scheduledDate =
    //    tz.TZDateTime.from(startDate, tz.local).add(Duration(seconds: 5));
    await _plugin.zonedSchedule(
        1, '装着期限アラート', '装着期限です。', scheduledDate, _defaultNotificationDetails,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
}

/// configure event when tapping notifications.
Future<void> Function(String?) selectNotification(BuildContext context) {
  return (payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    await Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => HomePage()),
    );
  };
}
