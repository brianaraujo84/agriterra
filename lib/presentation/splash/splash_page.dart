import 'package:agriterra/application/auth/auth_bloc.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.homePage);
          },
          unauthenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.loginPage);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
