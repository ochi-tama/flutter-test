import 'package:flutter/cupertino.dart';

/// No Doc
abstract class NotificationPlugin {
  /// No Doc
  Future<void> initializeSettings(BuildContext context);

  /// No Doc
  Future<void> showNotification();

  /// No Doc
  Future<void> cancelNotification();

  /// No Doc
  Future<void> zonedScheduleNotification(DateTime startDate, int days);
}
