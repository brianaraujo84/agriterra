import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class MessageHelper {
  /// Get a success notification flushbar.
  static Flushbar createSuccess({
    @required String message,
  }) {
    return Flushbar(
      margin: EdgeInsets.all(8),
      borderRadius: 8,
      message: message,
      icon: Icon(
        Icons.check_circle,
        color: successColor,
      ),
      duration: Duration(seconds: 3),
    );
  }

  /// Get an information notification flushbar
  static Flushbar createInformation({@required String message}) {
    return Flushbar(
      margin: EdgeInsets.all(8),
      borderRadius: 8,
      message: message,
      icon: Icon(
        Icons.info_outline,
        color: informationColor,
      ),
      duration: Duration(seconds: 3),
    );
  }

  /// Get a error notification flushbar
  static Flushbar createError({@required String message}) {
    return Flushbar(
      margin: EdgeInsets.all(8),
      borderRadius: 8,
      message: message,
      icon: Icon(
        Icons.warning,
        color: errorColor,
      ),
      duration: Duration(seconds: 3),
    );
  }
}
