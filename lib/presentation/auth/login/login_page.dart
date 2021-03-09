import 'package:agriterra/application/auth/auth_bloc.dart';
import 'package:agriterra/application/auth/log_in/log_in_bloc.dart';
import 'package:agriterra/config/injectable/injection.dart';
import 'package:agriterra/domain/core/network_exceptions.dart';
import 'package:agriterra/presentation/core/constants/app_constants.dart';
import 'package:agriterra/presentation/core/helpers/ui_helper.dart';
import 'package:agriterra/presentation/core/routes/app_router.dart';
import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:agriterra/presentation/core/utils/message_helper.dart';
import 'package:agriterra/presentation/core/widgets/loading_modal_widget.dart';
import 'package:agriterra/presentation/core/widgets/logo_app_widget.dart';
import 'package:agriterra/presentation/core/widgets/primary_button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerUserName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final ValueNotifier<bool> _hidePassword = ValueNotifier(true);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _constants = AppConstants.of(context);
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LogInBloc>(),
        child: BlocConsumer<LogInBloc, LogInState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  MessageHelper.createError(
                    message: NetworkExceptions.getErrorMessage(failure),
                  ).show(context);
                },
                (_) {
                  // Navigate to the authenticated page
                  ExtendedNavigator.of(context).replace(Routes.homePage);

                  // And also we have to update the status of the Log  in Bloc
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequest());
                },
              ),
            );
          },
          builder: (context, state) {
            return Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/foot_login.png",
                        ),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                    child: Form(
                      key: formKey,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: UIHelper.spaceLarge,
                          right: UIHelper.spaceLarge,
                          top: UIHelper.spaceLarge,
                          bottom: MediaQuery.of(context).size.height* 0.30,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: UIHelper.spaceLarge * 3),
                            Center(
                              child: LogoApp(),
                            ),
                            SizedBox(height: UIHelper.spaceLarge * 2),
                            Text(
                              _constants.appName,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            UIHelper.verticalSpace(24),
                            _createUserNameInput(),
                            UIHelper.verticalSpaceLarge(),
                            _createPasswordInput(),
                            UIHelper.verticalSpaceLarge(),
                            PrimaryButton(
                              onPressed: () {
                                if (!formKey.currentState.validate()) {
                                  return;
                                }
                                _closeKeyboard(context);

                                context.read<LogInBloc>().add(
                                      LogInEvent.logInWithUserAndPassword(
                                        user: _controllerUserName.text,
                                        password: _controllerPassword.text,
                                      ),
                                    );
                              },
                              isValid: true,
                              textButton: _constants.enter,
                            ),
                            UIHelper.verticalSpace(56),
                            forgotPasswordDescription(_constants),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (state.isSubmitting) ...[
                  LoadingModal(),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _createUserNameInput() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _controllerUserName,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: AppConstants.of(context).user),
      validator: validateRequired,
    );
  }

  Widget _createPasswordInput() {
    return ValueListenableBuilder<bool>(
      valueListenable: _hidePassword,
      builder: (context, hidePassword, child) {
        return TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: hidePassword,
          controller: _controllerPassword,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: AppConstants.of(context).password,
            suffixIcon: IconButton(
              onPressed: () {
                _hidePassword.value = !_hidePassword.value;
              },
              icon: Icon(
                hidePassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            ),
          ),
          validator: validatePassword,
        );
      },
    );
  }

  String validateRequired(String value) {
    if (value == null || value.isEmpty) {
      return AppConstants.of(context).requiredField;
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value.isEmpty || value.length < 4) {
      return AppConstants.of(context).invalidPassword;
    } else {
      return null;
    }
  }

  Widget forgotPasswordDescription(AppConstants constants) {
    return RichText(
      text: TextSpan(
        text: constants.forgotPassword,
        style: Theme.of(context).textTheme.bodyText2,
        children: <TextSpan>[
          TextSpan(
            text: " ${constants.recoverPassword}",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w800,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                ExtendedNavigator.of(context).push(Routes.regainPasswordPage);
              },
          ),
          TextSpan(
            text: ".",
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  void _closeKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  void dispose() {
    _controllerPassword?.dispose();
    _controllerUserName?.dispose();
    super.dispose();
  }
}
