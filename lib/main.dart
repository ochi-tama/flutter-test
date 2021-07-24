import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'utils/timezone.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureLocalTimeZone();
  // await _configureLocalTimeZone();
  // initialise the plugin. app_icon needs to be a
  // added as a drawable resource to the Android head project

  // Firebase
  // await Firebase.initializeApp();
  // Crashlytics
  // await FirebaseCrashlytics.instance
  //     .setCrashlyticsCollectionEnabled(kDebugMode);
  Function originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) async {
    //await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    originalOnError(errorDetails);
  };

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  runZonedGuarded(() {
    runApp(ProviderScope(child: MyApp()));
  }, (error, stackTrace) {
    // FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}
