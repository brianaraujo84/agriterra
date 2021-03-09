import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String textButton;
  final bool isValid;
  final VoidCallback onPressed;
  final Color color;

  PrimaryButton({
    Key key,
    this.color,
    @required this.textButton,
    @required this.isValid,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: isValid ? onPressed : null,
      color: color,
      child: Container(
        height: 50,
        // min sizes for Material buttons
        alignment: Alignment.center,
        child: Text(
          textButton,
          style: Theme.of(context).textTheme.button.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
