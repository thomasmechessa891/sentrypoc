///
abstract class Env {
  static const String sentryDSN = String.fromEnvironment(
    "SENTRY_DSN",
    defaultValue: "",
  );

  static const String sentryRelease = String.fromEnvironment(
    "SENTRY_RELEASE",
    defaultValue: "",
  );

  static const String sentryEnvironment = String.fromEnvironment(
    "SENTRY_ENVIRONMENT",
    defaultValue: "",
  );

  static const String sentryDist = String.fromEnvironment(
    "SENTRY_DIST",
    defaultValue: "",
  );
}
