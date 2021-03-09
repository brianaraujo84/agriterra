import 'package:agriterra/domain/investments/entities/vaccine.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/main_icons/main_icons_icons.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class VaccineCard extends StatelessWidget {
  final Vaccine vaccine;
  final Function onDeletePressed;
  final Function onEditPressed;

  VaccineCard({
    @required this.vaccine,
    @required this.onDeletePressed,
    @required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vaccine.name,
                  style: _textTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                UIHelper.verticalSpaceSmall(),
                Text(
                  vaccine.getRegistrationDate(),
                  style: _textTheme.caption,
                ),
              ],
            ),
          ),
          FloatingActionButton(
            heroTag: "deleteItemFab${vaccine.id}",
            onPressed: onDeletePressed,
            child: Icon(
              MainIcons.delete_icon,
              color: Colors.white,
            ),
            backgroundColor: investmentsFinishColor,
            elevation: 0,
            mini: true,
          ),
          FloatingActionButton(
            heroTag: "editItemFab${vaccine.id}",
            onPressed: onEditPressed,
            child: Icon(
              MainIcons.edit_icon,
              color: Colors.white,
            ),
            backgroundColor: blueOilColor,
            elevation: 0,
            mini: true,
          ),
        ],
      ),
    );
  }
}
