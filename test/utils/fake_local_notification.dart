import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/utils/notification_plugin.dart';

class FakeLocalNotification extends NotificationPlugin {
  @override
  Future<void> cancelNotification() async {
    // throw UnimplementedError();
  }

  @override
  Future<void> initializeSettings(BuildContext context, WidgetRef ref) async {
    // throw UnimplementedError();
  }

  @override
  Future<void> showNotification() async {
    // throw UnimplementedError();
  }

  @override
  Future<void> zonedScheduleNotification(DateTime startDate, int days) async {
    // throw UnimplementedError();
  }
}
