import 'package:agriterra/infrastructure/auth/datasources/auth_remote_data_source.dart';

import '../../../domain/auth/repositories/auth_repository.dart';
import '../../../domain/core/network_exceptions.dart';
import '../datasources/auth_local_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
  });

  @override
  Future<Either<NetworkExceptions, Unit>> forgotPassword({String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkExceptions, Unit>> logInWithUserAndPassword({
    String user,
    String password,
  }) async {
    try {
      final response = await remoteDataSource.loginUser(
        userName: user,
        password: password,
      );

      localDataSource.cacheUserId(userId: response["uid"].toString());
      localDataSource.cacheCompanyId(
        companyId: response["company_id"].toString(),
      );
      localDataSource.cacheToken(token: response["access_token"]);
      localDataSource.cacheRefreshToken(
        refreshToken: response["refresh_token"],
      );
      return Right(unit);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, Unit>> signOutUser() async {
    try {
      localDataSource.cacheUserId(userId: null);
      localDataSource.cacheCompanyId(companyId: null);
      localDataSource.cacheToken(token: null);
      localDataSource.cacheRefreshToken(refreshToken: null);
      return Right(unit);
    } catch (e) {
      return Left(NetworkExceptions.cacheError());
    }
  }

  @override
  Future<Either<NetworkExceptions, Unit>> checkUserLoggedIn() async {
    try {
      final String response = await localDataSource.getUserId();
      if (response != null && response.isNotEmpty) {
        return Right(unit);
      } else {
        return Left(NetworkExceptions.cacheError());
      }
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }
}
