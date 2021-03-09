import 'package:agriterra/domain/investments/entities/general_object.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final GeneralObject value;
  final List<GeneralObject> items;
  final Function(GeneralObject) onChanged;
  final String title;
  final FormFieldValidator<dynamic> validator;
  final bool disabled;

  CustomDropDown({
    @required this.value,
    @required this.items,
    @required this.onChanged,
    @required this.title,
    this.validator,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<GeneralObject>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      isExpanded: true,
      focusColor: Colors.white,
      value: value,
      hint: Text(title),
      onChanged: disabled ? null : onChanged,
      items: items.map((GeneralObject value) {
        return DropdownMenuItem<GeneralObject>(
          value: value,
          child: Text(value.name),
        );
      }).toList(),
      validator: validator,
    );
  }
}
