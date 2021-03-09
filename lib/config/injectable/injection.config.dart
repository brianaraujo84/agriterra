// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/investments/animal_inventory/animal_inventory_bloc.dart';
import '../../application/investments/animal_parturition/animal_parturition_bloc.dart';
import '../../application/investments/animal_vaccines/animal_vaccines_bloc.dart';
import '../../application/auth/auth_bloc.dart';
import '../../infrastructure/auth/datasources/auth_local_data_source.dart';
import '../../infrastructure/auth/datasources/auth_remote_data_source.dart';
import '../../domain/auth/repositories/auth_repository.dart';
import '../../infrastructure/auth/repositories/auth_repository_impl.dart';
import '../../infrastructure/core/dio_client.dart';
import '../../infrastructure/investments/datasources/investments_remote_data_source.dart';
import '../../domain/investments/repositories/investments_repository.dart';
import '../../infrastructure/investments/repositories/investments_repository_impl.dart';
import '../../application/auth/log_in/log_in_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<AuthLocalDataSource>(() =>
      AuthLocalDataSourceImpl(sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<DioClient>(() =>
      DioClient(dio: get<Dio>(), localDataSource: get<AuthLocalDataSource>()));
  gh.lazySingleton<InvestmentsRemoteDataSource>(
      () => InvestmentsRemoteDataSourceImpl(dioClient: get<DioClient>()));
  gh.lazySingleton<InvestmentsRepository>(() => InvestmentsRepositoryImpl(
      localDataSource: get<AuthLocalDataSource>(),
      remoteDataSource: get<InvestmentsRemoteDataSource>()));
  gh.factory<AnimalInventoryBloc>(
      () => AnimalInventoryBloc(get<InvestmentsRepository>()));
  gh.factory<AnimalParturitionBloc>(
      () => AnimalParturitionBloc(get<InvestmentsRepository>()));
  gh.factory<AnimalVaccinesBloc>(
      () => AnimalVaccinesBloc(get<InvestmentsRepository>()));
  gh.lazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dioClient: get<DioClient>()));
  gh.lazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      localDataSource: get<AuthLocalDataSource>(),
      remoteDataSource: get<AuthRemoteDataSource>()));
  gh.factory<LogInBloc>(() => LogInBloc(get<AuthRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(repository: get<AuthRepository>()));
  return get;
}
