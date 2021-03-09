import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest() = UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  const factory NetworkExceptions.cacheError() = CacheError;

  static NetworkExceptions handleResponse(int statusCode, DioError error) {
    switch (statusCode) {
      case 400:
        return NetworkExceptions.defaultError(
          error.response.data["message"] ?? "Error en la operación.",
        );
        break;
      case 401:
        if (error.response.toString().contains("authentication failed")) {
          return NetworkExceptions.defaultError(
            "Su usuario o contraseña son incorrectos.",
          );
        } else {
          if (error.toString().contains("Token is expired or invalid")) {
            return NetworkExceptions.defaultError(
              "Sus credenciales expiraron, por favor vuelva a iniciar sesión.",
            );
          } else {
            return NetworkExceptions.unauthorizedRequest();
          }
        }
        break;
      case 403:
        return NetworkExceptions.unauthorizedRequest();
        break;
      case 404:
        return NetworkExceptions.notFound("Not found");
        break;
      case 409:
        return NetworkExceptions.conflict();
        break;
      case 408:
        return NetworkExceptions.requestTimeout();
        break;
      case 500:
      case 501:
      case 502:
        return NetworkExceptions.internalServerError();
        break;
      case 503:
        return NetworkExceptions.serviceUnavailable();
        break;
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error.toString().contains("CacheException")) {
          return NetworkExceptions.cacheError();
        }

        if (error.toString().contains("Token is expired or invalid!")) {
          return NetworkExceptions.defaultError(
            "Sus credenciales expiraron, por favor vuelva a iniciar sesión.",
          );
        }

        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.CANCEL:
              networkExceptions = NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.CONNECT_TIMEOUT:
              networkExceptions = NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.DEFAULT:
              networkExceptions = NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.RECEIVE_TIMEOUT:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.RESPONSE:
              networkExceptions = NetworkExceptions.handleResponse(
                  error.response.statusCode, error);
              break;
            case DioErrorType.SEND_TIMEOUT:
              networkExceptions = NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        return NetworkExceptions.formatException();
      } catch (_) {
        return NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return NetworkExceptions.unableToProcess();
      } else {
        return NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(
      notImplemented: () {
        errorMessage = "Funcionalidad no implementada";
      },
      requestCancelled: () {
        errorMessage = "Solicitud cancelada";
      },
      internalServerError: () {
        errorMessage =
            "Error interno del servidor, inténtelo de nuevo más tarde";
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = "Servicio no disponible";
      },
      methodNotAllowed: () {
        errorMessage = "Método no permitido";
      },
      badRequest: () {
        errorMessage = "Solicitud incorrecta";
      },
      unauthorizedRequest: () {
        errorMessage = "Solicitud no autorizada";
      },
      unexpectedError: () {
        errorMessage = "Ocurrió un error inesperado";
      },
      requestTimeout: () {
        errorMessage = "Tiempo de espera expirado, revise su conexión";
      },
      noInternetConnection: () {
        errorMessage = "Sin conexión a Internet";
      },
      conflict: () {
        errorMessage = "Error debido a un conflicto";
      },
      sendTimeout: () {
        errorMessage =
            "Tiempo de espera excedido en la conexión al servidor API";
      },
      unableToProcess: () {
        errorMessage = "Error al procesar los datos";
      },
      defaultError: (String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = "Ocurrió un error inesperado";
      },
      notAcceptable: () {
        errorMessage = "Solicitud rechazada";
      },
      cacheError: () {
        errorMessage = "Ocurrió un error con su sesión, "
            "por favor salga de la aplicación y vuelva a iniciar sesión";
      },
    );
    return errorMessage;
  }
}
