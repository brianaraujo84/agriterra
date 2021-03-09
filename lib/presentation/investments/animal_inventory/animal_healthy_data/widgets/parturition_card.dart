import 'package:agriterra/domain/investments/entities/parturition.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/main_icons/main_icons_icons.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ParturitionCard extends StatelessWidget {
  final Parturition parturition;
  final Function onDeletePressed;
  final Function onEditPressed;

  ParturitionCard({
    @required this.parturition,
    @required this.onDeletePressed,
    @required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _nroParturition = AppConstants.of(context).nroParturition;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  parturition.name,
                  style: _textTheme.subtitle1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                UIHelper.verticalSpaceSmall(),
                Text(
                  "$_nroParturition: ${parturition.nroParto.toString()}",
                  style: _textTheme.subtitle2,
                ),
                UIHelper.verticalSpaceSmall(),
                Text(
                  parturition.getRegistrationDate(),
                  style: _textTheme.caption,
                ),
              ],
            ),
          ),
          FloatingActionButton(
            heroTag: "deleteParturitionFab${parturition.id}",
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
            heroTag: "editParturitionFab${parturition.id}",
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
