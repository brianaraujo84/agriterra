import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String textButton;
  final bool isValid;
  final VoidCallback onPressed;

  SecondaryButton({
    Key key,
    @required this.textButton,
    @required this.isValid,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: isValid ? onPressed : null,
      child: Container(
        height: 50,
        // min sizes for Material buttons
        alignment: Alignment.center,
        child: Text(
          textButton,
        ),
      ),
    );
  }
}
