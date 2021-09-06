import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// No Doc
abstract class NotificationPlugin {
  /// No Doc
  Future<void> initializeSettings(BuildContext context, WidgetRef ref);

  /// No Doc
  Future<void> showNotification();

  /// No Doc
  Future<void> cancelNotification();

  /// No Doc
  Future<void> zonedScheduleNotification(DateTime startDate, int days);
}
