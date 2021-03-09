import 'package:agriterra/config/env/environment_config.dart';
import 'package:flutter/material.dart';
import 'config/injectable/injection.dart';
import 'presentation/core/widgets/app_widget.dart';
import 'presentation/core/constants/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  EnvironmentConfig(
    environment: Environment.DEV,
    values: EnvironmentValues(
      baseUrl: "http://54.94.93.99:1369",
      databaseName: "",
    ),
  );
  runApp(
    AppConstants(
      child: AppWidget(),
    ),
  );
}
