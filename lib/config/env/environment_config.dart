import 'package:flutter/material.dart';

enum Environment { DEV, PRODUCTION }

class EnvironmentValues {
  final String baseUrl;
  final String databaseName;

  EnvironmentValues({
    @required this.baseUrl,
    @required this.databaseName,
  });
}

class EnvironmentConfig {
  final Environment environment;
  final EnvironmentValues values;
  static EnvironmentConfig _instance;

  factory EnvironmentConfig({
    @required Environment environment,
    @required EnvironmentValues values,
  }) {
    _instance ??= EnvironmentConfig._internal(
      environment,
      values,
    );
    return _instance;
  }

  EnvironmentConfig._internal(
    this.environment,
    this.values,
  );

  static EnvironmentConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.environment == Environment.PRODUCTION;

  static bool isDevelopment() => _instance.environment == Environment.DEV;
}
