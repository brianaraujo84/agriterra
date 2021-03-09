import 'package:dio/dio.dart';
import 'injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  $initGetIt(
    getIt,
    environment: String.fromEnvironment('ENV', defaultValue: 'dev'),
  );

  /// External - Dio
  getIt.registerLazySingleton<Dio>(() => Dio());

  /// External - SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
