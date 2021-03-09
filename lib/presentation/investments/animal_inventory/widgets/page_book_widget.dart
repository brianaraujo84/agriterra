import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:flutter/material.dart';

class PageBook extends StatelessWidget {
  final Widget child;

  PageBook({this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(UIHelper.spaceMedium),
          child: Container(
            padding: EdgeInsets.only(right: 10),
            color: Color(0xFFD4F4FB),
            child: Container(
              color: Color(0xFFE8FBFF),
              child: Padding(
                padding: EdgeInsets.only(
                  top: UIHelper.spaceLarge * 2,
                  bottom: UIHelper.spaceLarge,
                  left: UIHelper.spaceLarge,
                  right: UIHelper.spaceLarge,
                ),
                child: child,
              ),
            ),
          ),
        ),
        Positioned(
          right: 25,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.87,
            child: Image.asset(
              "assets/images/squares.png",
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
