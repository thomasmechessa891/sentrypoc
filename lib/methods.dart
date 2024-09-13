import 'package:sentry_flutter/sentry_flutter.dart';

void throwHandledException() {
  try {
    throw Exception('This is a handled exception');
  } catch (e, stackTrace) {
    Sentry.captureException(e, stackTrace: stackTrace);
  }
}

void wrapperMethodForUnhandledException() {
  throw Exception('This is an unhandled exception');
}

void throwUnhandledException() {
  wrapperMethodForUnhandledException();
}
