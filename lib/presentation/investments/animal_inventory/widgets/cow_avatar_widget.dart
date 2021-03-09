import 'package:flutter/material.dart';

class CowAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 86,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(43),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Image.asset(
          "assets/images/cow_avatar.png",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
