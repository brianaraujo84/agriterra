import 'package:agriterra/application/auth/auth_bloc.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/main_icons/main_icons_icons.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/widgets/menu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final investmentsIcon = "icono_inversiones.png";
  final outComesIcon = "icono_gastos.png";
  final productionIcon = "icono_produccion.png";
  final earningsIcon = "icono_ganancia.png";
  final resultsIcon = "icono_resultados.png";

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);
    final _textTheme = Theme.of(context).textTheme;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.loginPage),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Icon(MainIcons.cow_icon),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(MainIcons.logout_icon),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              UIHelper.verticalSpaceSmall(),
              MenuItem(
                title: _constants.investmentsTitle,
                subtitle: _constants.investmentsSubtitle,
                pathIcon: investmentsIcon,
                colorGradientStart: investmentsStartColor,
                colorGradientFinish: investmentsFinishColor,
                onPressed: () {
                  ExtendedNavigator.of(context).push(
                    Routes.investmentsHomePage,
                  );
                },
                textTheme: _textTheme,
                constants: _constants,
              ),
              MenuItem(
                title: _constants.expensesTitle,
                subtitle: _constants.expensesSubtitle,
                pathIcon: outComesIcon,
                colorGradientStart: outComesStartColor,
                colorGradientFinish: outComesFinishColor,
                onPressed: null,
                textTheme: _textTheme,
                constants: _constants,
              ),
              MenuItem(
                title: _constants.productionsTitle,
                subtitle: _constants.productionsSubtitle,
                pathIcon: productionIcon,
                colorGradientStart: productionStartColor,
                colorGradientFinish: productionFinishColor,
                onPressed: null,
                textTheme: _textTheme,
                constants: _constants,
              ),
              MenuItem(
                title: _constants.earningsTitle,
                subtitle: _constants.earningsSubtitle,
                pathIcon: earningsIcon,
                colorGradientStart: earningsStartColor,
                colorGradientFinish: earningsFinishColor,
                onPressed: null,
                textTheme: _textTheme,
                constants: _constants,
              ),
              MenuItem(
                title: _constants.resultsTitle,
                subtitle: _constants.resultsSubtitle,
                pathIcon: resultsIcon,
                colorGradientStart: resultsStartColor,
                colorGradientFinish: resultsFinishColor,
                onPressed: null,
                textTheme: _textTheme,
                constants: _constants,
              ),
              UIHelper.verticalSpace(UIHelper.spaceLarge * 4),
              Image.asset(
                "assets/images/foot_home.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
