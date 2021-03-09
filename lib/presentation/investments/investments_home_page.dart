import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/widgets/menu_item_widget.dart';
import 'package:agriterra/presentation/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class InvestmentsHomePage extends StatelessWidget {
  final inventoryAnimalsIcon = "icono_inv_inventario_animales.png";
  final inversionAnimalsIcon = "icono_inv_inversion_animales.png";
  final inversionInstallationsIcon = "icono_inv_inversion_instalaciones.png";
  final deprecationsIcon = "icono_inv_depreciaciones.png";

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);
    final _textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: investmentsFinishColor,
        title: Text(_constants.investmentsTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(UIHelper.spaceMedium),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MenuItem(
                      title: _constants.inventoryAnimalsTitle,
                      subtitle: _constants.inventoryAnimalsSubtitle,
                      pathIcon: inventoryAnimalsIcon,
                      colorGradientStart: investmentsStartColor,
                      colorGradientFinish: investmentsFinishColor,
                      isVertical: true,
                      onPressed: () {
                        ExtendedNavigator.of(context).push(
                          Routes.animalInvestmentsPage,
                        );
                      },
                      textTheme: _textTheme,
                      constants: _constants,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MenuItem(
                      title: _constants.inversionAnimalsTitle,
                      subtitle: _constants.inversionAnimalsSubtitle,
                      pathIcon: inversionAnimalsIcon,
                      colorGradientStart: investmentsStartColor,
                      colorGradientFinish: investmentsFinishColor,
                      isVertical: true,
                      onPressed: () {},
                      textTheme: _textTheme,
                      constants: _constants,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(UIHelper.spaceMedium),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MenuItem(
                      title: _constants.inversionInstallationsTitle,
                      subtitle: _constants.inversionInstallationsSubtitle,
                      pathIcon: inversionInstallationsIcon,
                      colorGradientStart: investmentsStartColor,
                      colorGradientFinish: investmentsFinishColor,
                      isVertical: true,
                      onPressed: () {},
                      textTheme: _textTheme,
                      constants: _constants,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MenuItem(
                      title: _constants.deprecationsTitle,
                      subtitle: _constants.deprecationsSubtitle,
                      pathIcon: deprecationsIcon,
                      colorGradientStart: investmentsStartColor,
                      colorGradientFinish: investmentsFinishColor,
                      isVertical: true,
                      onPressed: () {},
                      textTheme: _textTheme,
                      constants: _constants,
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(UIHelper.spaceLarge * 2),
            Stack(
              children: [
                Image.asset("assets/images/footer_mountains.png"),
                Positioned(
                  bottom: UIHelper.spaceLarge * 2,
                  left: UIHelper.spaceLarge,
                  right: UIHelper.spaceLarge,
                  child: PrimaryButton(
                    color: investmentsFinishColor,
                    textButton: _constants.backToMenu,
                    isValid: true,
                    onPressed: () {
                      ExtendedNavigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
