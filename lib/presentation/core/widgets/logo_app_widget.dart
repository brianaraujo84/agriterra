import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  final bool isSmall;

  LogoApp({this.isSmall = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSmall ? 50 : 100,
      child: Image.asset(
        "assets/logo.png",
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: primaryColor.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2.95,
            offset: Offset(0.0, 7),
          )
        ],
        borderRadius: BorderRadius.circular(UIHelper.spaceLarge * 2),
      ),
    );
  }
}
