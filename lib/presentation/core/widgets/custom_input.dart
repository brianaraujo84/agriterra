import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final int maxLength;
  final Function(String) onSaved;
  final FormFieldValidator<String> validator;
  final bool isPhone;
  final bool isNumber;
  final bool isDecimal;
  final bool disabled;
  final Icon suffixIcon;

  CustomInput({
    @required this.label,
    @required this.controller,
    @required this.maxLength,
    @required this.onSaved,
    this.suffixIcon,
    this.validator,
    this.isPhone = false,
    this.isNumber = false,
    this.isDecimal = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: !disabled,
      keyboardType: isPhone
          ? TextInputType.phone
          : isNumber
              ? TextInputType.number
              : TextInputType.text,
      inputFormatters: isDecimal
          ? [FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))]
          : isPhone || isNumber
              ? [FilteringTextInputFormatter.digitsOnly]
              : null,
      decoration: InputDecoration(
        labelText: label,
        counterStyle: TextStyle(
          height: double.minPositive,
        ),
        counterText: "",
        suffix: suffixIcon,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: maxLength,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
