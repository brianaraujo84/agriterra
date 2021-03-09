import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

abstract class AuthRepository {
  Future<Either<NetworkExceptions, Unit>> checkUserLoggedIn();

  Future<Either<NetworkExceptions, Unit>> logInWithUserAndPassword({
    @required String user,
    @required String password,
  });

  Future<Either<NetworkExceptions, Unit>> forgotPassword({
    @required String email,
  });

  Future<Either<NetworkExceptions, Unit>> signOutUser();
}
