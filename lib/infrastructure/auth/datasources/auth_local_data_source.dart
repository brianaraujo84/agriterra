import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';

const String TOKEN = "token";
const String REFRESH_TOKEN = "refresh_token";
const String USER_ID = "user_id";
const String COMPANY_ID = "company_id";

abstract class AuthLocalDataSource {
  Future<String> getToken();

  Future<void> cacheToken({String token});

  Future<String> getRefreshToken();

  Future<void> cacheRefreshToken({String refreshToken});

  Future<String> getUserId();

  Future<void> cacheUserId({String userId});

  Future<String> getCompanyId();

  Future<void> cacheCompanyId({String companyId});
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<String> getToken() {
    final tokenString = sharedPreferences.getString(TOKEN);
    if (tokenString != null) {
      return Future.value(tokenString);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheToken({String token}) {
    return sharedPreferences.setString(
      TOKEN,
      token,
    );
  }

  @override
  Future<String> getRefreshToken() {
    final tokenString = sharedPreferences.getString(REFRESH_TOKEN);
    if (tokenString != null) {
      return Future.value(tokenString);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheRefreshToken({String refreshToken}) {
    return sharedPreferences.setString(
      REFRESH_TOKEN,
      refreshToken,
    );
  }

  @override
  Future<String> getCompanyId() {
    final companyIdString = sharedPreferences.getString(COMPANY_ID);
    if (companyIdString != null) {
      return Future.value(companyIdString);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheCompanyId({String companyId}) {
    return sharedPreferences.setString(
      COMPANY_ID,
      companyId,
    );
  }

  @override
  Future<String> getUserId() {
    final userIdString = sharedPreferences.getString(USER_ID);
    if (userIdString != null) {
      return Future.value(userIdString);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheUserId({String userId}) {
    return sharedPreferences.setString(
      USER_ID,
      userId,
    );
  }
}

// This is a custom exception, for a possible cache exception
class CacheException implements Exception {}
