import 'package:agriterra/domain/investments/entities/animal.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final Animal animal;

  AnimalCard({this.animal});

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);
    final _textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UIHelper.spaceMedium),
      ),
      shadowColor: Colors.black54,
      child: Padding(
        padding: EdgeInsets.all(UIHelper.spaceMedium),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: circleImage(),
              ),
            ),
            UIHelper.horizontalSpaceLarge(),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animal.name,
                    style: _textTheme.subtitle1.copyWith(
                      color: investmentsFinishColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  Text(
                    animal.estadoAnimalId.name,
                    style: _textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${animal.edadMeses} ${_constants.months}",
                          style: _textTheme.bodyText1.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Text(
                        animal.getRegistrationDate(),
                        style: _textTheme.caption,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget circleImage() {
    return Container(
      height: 36,
      child: Image.asset("assets/images/cow_avatar.png"),
    );
  }
}
