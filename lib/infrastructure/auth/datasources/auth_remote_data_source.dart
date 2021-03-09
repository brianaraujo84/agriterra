import 'package:agriterra/infrastructure/core/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

abstract class AuthRemoteDataSource {
  Future<dynamic> loginUser({
    @required String userName,
    @required String password,
  });
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  static const String _api = "/api";
  static const String _urlAuth = "$_api/auth/get_tokens";

  final DioClient dioClient;

  AuthRemoteDataSourceImpl({this.dioClient});

  @override
  Future<dynamic> loginUser({String userName, String password}) async {
    try {
      final response = await dioClient.get(
        _urlAuth,
        queryParameters: {
          "username": userName,
          "password": password,
        },
        options: Options(headers: {"no-auth": true}),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
