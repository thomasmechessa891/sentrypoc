import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sentrypoc/env.dart';
import 'package:sentrypoc/myApp.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SentryFlutter.init(
      (options) {
        options
          ..dsn = Env.sentryDSN
          ..tracesSampleRate = 1.0
          ..release = Env.sentryRelease
          ..environment = Env.sentryEnvironment
          ..dist = Env.sentryDist;
      },
    );

    runApp(const MyApp());
  }, (exception, stackTrace) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}
