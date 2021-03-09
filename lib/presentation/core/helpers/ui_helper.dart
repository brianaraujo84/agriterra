import 'package:flutter/material.dart';

class UIHelper {
  // Vertical spacing constants.
  static const double _spaceSmall = 4;
  static const double _spaceMedium = 8;
  static const double _spaceLarge = 16;

  /// Returns a vertical space with height set to [_spaceSmall]
  static Widget verticalSpaceSmall() {
    return verticalSpace(_spaceSmall);
  }

  /// Returns a vertical space with height set to [_spaceMedium]
  static Widget verticalSpaceMedium() {
    return verticalSpace(_spaceMedium);
  }

  /// Returns a vertical space with height set to [_spaceLarge]
  static Widget verticalSpaceLarge() {
    return verticalSpace(_spaceLarge);
  }

  /// Returns a vertical space equal to the [height] supplied
  static Widget verticalSpace(double height) {
    return SizedBox(height: height);
  }

  /// Returns a vertical space with height set to [_spaceSmall]
  static Widget horizontalSpaceSmall() {
    return horizontalSpace(_spaceSmall);
  }

  /// Returns a vertical space with height set to [_spaceMedium]
  static Widget horizontalSpaceMedium() {
    return horizontalSpace(_spaceMedium);
  }

  /// Returns a vertical space with height set to [HorizontalSpaceLarge]
  static Widget horizontalSpaceLarge() {
    return horizontalSpace(_spaceLarge);
  }

  /// Returns a vertical space equal to the [width] supplied
  static Widget horizontalSpace(double width) {
    return SizedBox(width: width);
  }

  // Return a _spaceSmall value
  static double get spaceSmall => _spaceSmall;

  // Return a HorizontalSpaceMedium value
  static double get spaceMedium => _spaceMedium;

  // Return a HorizontalSpaceLarge value
  static double get spaceLarge => _spaceLarge;
}
